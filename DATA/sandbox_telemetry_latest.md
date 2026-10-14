# sandbox_telemetry_parse — 2026-10-14 20:52:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=482202 lines=1071
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1066 |
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
| `chromeBrowserPssKb` | {'int': 1066} |
| `chromeGpuPssKb` | {'int': 1066} |
| `chromeOtherPssKb` | {'int': 1066} |
| `chromeProcesses` | {'int': 1066} |
| `chromeProfiles` | {'int': 1066} |
| `chromeRendererMaxPssKb` | {'int': 1066} |
| `chromeRendererPssKb` | {'int': 1066} |
| `chromeRenderers` | {'int': 1066} |
| `chromeTabs` | {'int': 1066} |
| `chromeTabsProbedProfiles` | {'int': 1066} |
| `chromeUtilityPssKb` | {'int': 1066} |
| `desktopPssKb` | {'int': 1066} |
| `hostPssKb` | {'int': 1066} |
| `kind` | {'str': 1066} |
| `memAvailableKb` | {'int': 1066} |
| `memTotalKb` | {'int': 1066} |
| `otherPssKb` | {'int': 1066} |
| `processes` | {'int': 1066} |
| `pssFallbackProcesses` | {'int': 1066} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
