# sandbox_telemetry_parse — 2026-10-13 21:58:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1245023 lines=3269
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2400 |
| `chrome_profile_sample` | 861 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2400} |
| `chromeGpuPssKb` | {'int': 2400} |
| `chromeOtherPssKb` | {'int': 2400} |
| `chromeProcesses` | {'int': 2400} |
| `chromeProfiles` | {'int': 2400} |
| `chromeRendererMaxPssKb` | {'int': 2400} |
| `chromeRendererPssKb` | {'int': 2400} |
| `chromeRenderers` | {'int': 2400} |
| `chromeTabs` | {'int': 2400} |
| `chromeTabsProbedProfiles` | {'int': 2400} |
| `chromeUtilityPssKb` | {'int': 2400} |
| `desktopPssKb` | {'int': 2400} |
| `hostPssKb` | {'int': 2400} |
| `kind` | {'str': 2400} |
| `memAvailableKb` | {'int': 2400} |
| `memTotalKb` | {'int': 2400} |
| `otherPssKb` | {'int': 2400} |
| `processes` | {'int': 2400} |
| `pssFallbackProcesses` | {'int': 2400} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 860} |
| `display` | {'int': 861} |
| `kind` | {'str': 861} |
| `processes` | {'int': 861} |
| `pssKb` | {'int': 861} |
| `rendererMaxPssKb` | {'int': 861} |
| `renderers` | {'int': 861} |
| `tabs` | {'int': 861} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
