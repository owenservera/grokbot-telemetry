# sandbox_telemetry_parse — 2026-10-16 18:51:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=737942 lines=2758
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1826 |
| `memory_sample` | 923 |
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
| `chromeBrowserPssKb` | {'int': 923} |
| `chromeGpuPssKb` | {'int': 923} |
| `chromeOtherPssKb` | {'int': 923} |
| `chromeProcesses` | {'int': 923} |
| `chromeProfiles` | {'int': 923} |
| `chromeRendererMaxPssKb` | {'int': 923} |
| `chromeRendererPssKb` | {'int': 923} |
| `chromeRenderers` | {'int': 923} |
| `chromeTabs` | {'int': 923} |
| `chromeTabsProbedProfiles` | {'int': 923} |
| `chromeUtilityPssKb` | {'int': 923} |
| `desktopPssKb` | {'int': 923} |
| `hostPssKb` | {'int': 923} |
| `kind` | {'str': 923} |
| `memAvailableKb` | {'int': 923} |
| `memTotalKb` | {'int': 923} |
| `otherPssKb` | {'int': 923} |
| `processes` | {'int': 923} |
| `pssFallbackProcesses` | {'int': 923} |

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
| `cpuMillicores` | {'int': 1823} |
| `display` | {'int': 1826} |
| `kind` | {'str': 1826} |
| `processes` | {'int': 1826} |
| `pssKb` | {'int': 1826} |
| `rendererMaxPssKb` | {'int': 1826} |
| `renderers` | {'int': 1826} |
| `tabs` | {'int': 1825} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
