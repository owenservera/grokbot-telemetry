# sandbox_telemetry_parse — 2026-10-16 09:52:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=334249 lines=1249
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 820 |
| `memory_sample` | 420 |
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
| `chromeBrowserPssKb` | {'int': 420} |
| `chromeGpuPssKb` | {'int': 420} |
| `chromeOtherPssKb` | {'int': 420} |
| `chromeProcesses` | {'int': 420} |
| `chromeProfiles` | {'int': 420} |
| `chromeRendererMaxPssKb` | {'int': 420} |
| `chromeRendererPssKb` | {'int': 420} |
| `chromeRenderers` | {'int': 420} |
| `chromeTabs` | {'int': 420} |
| `chromeTabsProbedProfiles` | {'int': 420} |
| `chromeUtilityPssKb` | {'int': 420} |
| `desktopPssKb` | {'int': 420} |
| `hostPssKb` | {'int': 420} |
| `kind` | {'str': 420} |
| `memAvailableKb` | {'int': 420} |
| `memTotalKb` | {'int': 420} |
| `otherPssKb` | {'int': 420} |
| `processes` | {'int': 420} |
| `pssFallbackProcesses` | {'int': 420} |

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
| `cpuMillicores` | {'int': 817} |
| `display` | {'int': 820} |
| `kind` | {'str': 820} |
| `processes` | {'int': 820} |
| `pssKb` | {'int': 820} |
| `rendererMaxPssKb` | {'int': 820} |
| `renderers` | {'int': 820} |
| `tabs` | {'int': 819} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
