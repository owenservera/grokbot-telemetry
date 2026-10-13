# sandbox_telemetry_parse — 2026-10-13 12:55:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1090479 lines=2785
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2158 |
| `chrome_profile_sample` | 619 |
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
| `chromeBrowserPssKb` | {'int': 2158} |
| `chromeGpuPssKb` | {'int': 2158} |
| `chromeOtherPssKb` | {'int': 2158} |
| `chromeProcesses` | {'int': 2158} |
| `chromeProfiles` | {'int': 2158} |
| `chromeRendererMaxPssKb` | {'int': 2158} |
| `chromeRendererPssKb` | {'int': 2158} |
| `chromeRenderers` | {'int': 2158} |
| `chromeTabs` | {'int': 2158} |
| `chromeTabsProbedProfiles` | {'int': 2158} |
| `chromeUtilityPssKb` | {'int': 2158} |
| `desktopPssKb` | {'int': 2158} |
| `hostPssKb` | {'int': 2158} |
| `kind` | {'str': 2158} |
| `memAvailableKb` | {'int': 2158} |
| `memTotalKb` | {'int': 2158} |
| `otherPssKb` | {'int': 2158} |
| `processes` | {'int': 2158} |
| `pssFallbackProcesses` | {'int': 2158} |

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
| `cpuMillicores` | {'int': 618} |
| `display` | {'int': 619} |
| `kind` | {'str': 619} |
| `processes` | {'int': 619} |
| `pssKb` | {'int': 619} |
| `rendererMaxPssKb` | {'int': 619} |
| `renderers` | {'int': 619} |
| `tabs` | {'int': 619} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
