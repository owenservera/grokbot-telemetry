# sandbox_telemetry_parse — 2026-10-14 19:03:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=437906 lines=973
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 968 |
| `boot_stage` | 3 |
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
| `chromeBrowserPssKb` | {'int': 968} |
| `chromeGpuPssKb` | {'int': 968} |
| `chromeOtherPssKb` | {'int': 968} |
| `chromeProcesses` | {'int': 968} |
| `chromeProfiles` | {'int': 968} |
| `chromeRendererMaxPssKb` | {'int': 968} |
| `chromeRendererPssKb` | {'int': 968} |
| `chromeRenderers` | {'int': 968} |
| `chromeTabs` | {'int': 968} |
| `chromeTabsProbedProfiles` | {'int': 968} |
| `chromeUtilityPssKb` | {'int': 968} |
| `desktopPssKb` | {'int': 968} |
| `hostPssKb` | {'int': 968} |
| `kind` | {'str': 968} |
| `memAvailableKb` | {'int': 968} |
| `memTotalKb` | {'int': 968} |
| `otherPssKb` | {'int': 968} |
| `processes` | {'int': 968} |
| `pssFallbackProcesses` | {'int': 968} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
