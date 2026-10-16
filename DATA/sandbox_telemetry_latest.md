# sandbox_telemetry_parse — 2026-10-16 07:10:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=218652 lines=817
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 532 |
| `memory_sample` | 276 |
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
| `chromeBrowserPssKb` | {'int': 276} |
| `chromeGpuPssKb` | {'int': 276} |
| `chromeOtherPssKb` | {'int': 276} |
| `chromeProcesses` | {'int': 276} |
| `chromeProfiles` | {'int': 276} |
| `chromeRendererMaxPssKb` | {'int': 276} |
| `chromeRendererPssKb` | {'int': 276} |
| `chromeRenderers` | {'int': 276} |
| `chromeTabs` | {'int': 276} |
| `chromeTabsProbedProfiles` | {'int': 276} |
| `chromeUtilityPssKb` | {'int': 276} |
| `desktopPssKb` | {'int': 276} |
| `hostPssKb` | {'int': 276} |
| `kind` | {'str': 276} |
| `memAvailableKb` | {'int': 276} |
| `memTotalKb` | {'int': 276} |
| `otherPssKb` | {'int': 276} |
| `processes` | {'int': 276} |
| `pssFallbackProcesses` | {'int': 276} |

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
| `cpuMillicores` | {'int': 529} |
| `display` | {'int': 532} |
| `kind` | {'str': 532} |
| `processes` | {'int': 532} |
| `pssKb` | {'int': 532} |
| `rendererMaxPssKb` | {'int': 532} |
| `renderers` | {'int': 532} |
| `tabs` | {'int': 531} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
