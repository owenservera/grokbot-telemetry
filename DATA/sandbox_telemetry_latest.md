# sandbox_telemetry_parse — 2026-10-27 09:29:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=441204 lines=979
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 974 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 974} |
| `chromeGpuPssKb` | {'int': 974} |
| `chromeOtherPssKb` | {'int': 974} |
| `chromeProcesses` | {'int': 974} |
| `chromeProfiles` | {'int': 974} |
| `chromeRendererMaxPssKb` | {'int': 974} |
| `chromeRendererPssKb` | {'int': 974} |
| `chromeRenderers` | {'int': 974} |
| `chromeTabs` | {'int': 974} |
| `chromeTabsProbedProfiles` | {'int': 974} |
| `chromeUtilityPssKb` | {'int': 974} |
| `desktopPssKb` | {'int': 974} |
| `hostPssKb` | {'int': 974} |
| `kind` | {'str': 974} |
| `memAvailableKb` | {'int': 974} |
| `memTotalKb` | {'int': 974} |
| `otherPssKb` | {'int': 974} |
| `processes` | {'int': 974} |
| `pssFallbackProcesses` | {'int': 974} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
