# sandbox_telemetry_parse — 2026-10-16 08:44:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=290885 lines=1087
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 712 |
| `memory_sample` | 366 |
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
| `chromeBrowserPssKb` | {'int': 366} |
| `chromeGpuPssKb` | {'int': 366} |
| `chromeOtherPssKb` | {'int': 366} |
| `chromeProcesses` | {'int': 366} |
| `chromeProfiles` | {'int': 366} |
| `chromeRendererMaxPssKb` | {'int': 366} |
| `chromeRendererPssKb` | {'int': 366} |
| `chromeRenderers` | {'int': 366} |
| `chromeTabs` | {'int': 366} |
| `chromeTabsProbedProfiles` | {'int': 366} |
| `chromeUtilityPssKb` | {'int': 366} |
| `desktopPssKb` | {'int': 366} |
| `hostPssKb` | {'int': 366} |
| `kind` | {'str': 366} |
| `memAvailableKb` | {'int': 366} |
| `memTotalKb` | {'int': 366} |
| `otherPssKb` | {'int': 366} |
| `processes` | {'int': 366} |
| `pssFallbackProcesses` | {'int': 366} |

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
| `cpuMillicores` | {'int': 709} |
| `display` | {'int': 712} |
| `kind` | {'str': 712} |
| `processes` | {'int': 712} |
| `pssKb` | {'int': 712} |
| `rendererMaxPssKb` | {'int': 712} |
| `renderers` | {'int': 712} |
| `tabs` | {'int': 711} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
