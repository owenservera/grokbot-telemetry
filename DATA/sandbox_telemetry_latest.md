# sandbox_telemetry_parse — 2026-10-15 21:14:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1058502 lines=2346
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2341 |
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
| `chromeBrowserPssKb` | {'int': 2341} |
| `chromeGpuPssKb` | {'int': 2341} |
| `chromeOtherPssKb` | {'int': 2341} |
| `chromeProcesses` | {'int': 2341} |
| `chromeProfiles` | {'int': 2341} |
| `chromeRendererMaxPssKb` | {'int': 2341} |
| `chromeRendererPssKb` | {'int': 2341} |
| `chromeRenderers` | {'int': 2341} |
| `chromeTabs` | {'int': 2341} |
| `chromeTabsProbedProfiles` | {'int': 2341} |
| `chromeUtilityPssKb` | {'int': 2341} |
| `desktopPssKb` | {'int': 2341} |
| `hostPssKb` | {'int': 2341} |
| `kind` | {'str': 2341} |
| `memAvailableKb` | {'int': 2341} |
| `memTotalKb` | {'int': 2341} |
| `otherPssKb` | {'int': 2341} |
| `processes` | {'int': 2341} |
| `pssFallbackProcesses` | {'int': 2341} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
