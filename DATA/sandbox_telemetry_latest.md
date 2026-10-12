# sandbox_telemetry_parse — 2026-10-12 19:57:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=655336 lines=1454
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1449 |
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
| `chromeBrowserPssKb` | {'int': 1449} |
| `chromeGpuPssKb` | {'int': 1449} |
| `chromeOtherPssKb` | {'int': 1449} |
| `chromeProcesses` | {'int': 1449} |
| `chromeProfiles` | {'int': 1449} |
| `chromeRendererMaxPssKb` | {'int': 1449} |
| `chromeRendererPssKb` | {'int': 1449} |
| `chromeRenderers` | {'int': 1449} |
| `chromeTabs` | {'int': 1449} |
| `chromeTabsProbedProfiles` | {'int': 1449} |
| `chromeUtilityPssKb` | {'int': 1449} |
| `desktopPssKb` | {'int': 1449} |
| `hostPssKb` | {'int': 1449} |
| `kind` | {'str': 1449} |
| `memAvailableKb` | {'int': 1449} |
| `memTotalKb` | {'int': 1449} |
| `otherPssKb` | {'int': 1449} |
| `processes` | {'int': 1449} |
| `pssFallbackProcesses` | {'int': 1449} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
