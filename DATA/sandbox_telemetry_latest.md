# sandbox_telemetry_parse — 2026-10-16 09:56:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=336658 lines=1258
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 826 |
| `memory_sample` | 423 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 423} |
| `chromeGpuPssKb` | {'int': 423} |
| `chromeOtherPssKb` | {'int': 423} |
| `chromeProcesses` | {'int': 423} |
| `chromeProfiles` | {'int': 423} |
| `chromeRendererMaxPssKb` | {'int': 423} |
| `chromeRendererPssKb` | {'int': 423} |
| `chromeRenderers` | {'int': 423} |
| `chromeTabs` | {'int': 423} |
| `chromeTabsProbedProfiles` | {'int': 423} |
| `chromeUtilityPssKb` | {'int': 423} |
| `desktopPssKb` | {'int': 423} |
| `hostPssKb` | {'int': 423} |
| `kind` | {'str': 423} |
| `memAvailableKb` | {'int': 423} |
| `memTotalKb` | {'int': 423} |
| `otherPssKb` | {'int': 423} |
| `processes` | {'int': 423} |
| `pssFallbackProcesses` | {'int': 423} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 823} |
| `display` | {'int': 826} |
| `kind` | {'str': 826} |
| `processes` | {'int': 826} |
| `pssKb` | {'int': 826} |
| `rendererMaxPssKb` | {'int': 826} |
| `renderers` | {'int': 826} |
| `tabs` | {'int': 825} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
