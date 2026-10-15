# sandbox_telemetry_parse — 2026-10-15 02:05:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=606954 lines=1347
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1342 |
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
| `chromeBrowserPssKb` | {'int': 1342} |
| `chromeGpuPssKb` | {'int': 1342} |
| `chromeOtherPssKb` | {'int': 1342} |
| `chromeProcesses` | {'int': 1342} |
| `chromeProfiles` | {'int': 1342} |
| `chromeRendererMaxPssKb` | {'int': 1342} |
| `chromeRendererPssKb` | {'int': 1342} |
| `chromeRenderers` | {'int': 1342} |
| `chromeTabs` | {'int': 1342} |
| `chromeTabsProbedProfiles` | {'int': 1342} |
| `chromeUtilityPssKb` | {'int': 1342} |
| `desktopPssKb` | {'int': 1342} |
| `hostPssKb` | {'int': 1342} |
| `kind` | {'str': 1342} |
| `memAvailableKb` | {'int': 1342} |
| `memTotalKb` | {'int': 1342} |
| `otherPssKb` | {'int': 1342} |
| `processes` | {'int': 1342} |
| `pssFallbackProcesses` | {'int': 1342} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
