# sandbox_telemetry_parse — 2026-10-06 23:44:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=674162 lines=1483
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1478 |
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
| `chromeBrowserPssKb` | {'int': 1478} |
| `chromeGpuPssKb` | {'int': 1478} |
| `chromeOtherPssKb` | {'int': 1478} |
| `chromeProcesses` | {'int': 1478} |
| `chromeProfiles` | {'int': 1478} |
| `chromeRendererMaxPssKb` | {'int': 1478} |
| `chromeRendererPssKb` | {'int': 1478} |
| `chromeRenderers` | {'int': 1478} |
| `chromeTabs` | {'int': 1478} |
| `chromeTabsProbedProfiles` | {'int': 1478} |
| `chromeUtilityPssKb` | {'int': 1478} |
| `desktopPssKb` | {'int': 1478} |
| `hostPssKb` | {'int': 1478} |
| `kind` | {'str': 1478} |
| `memAvailableKb` | {'int': 1478} |
| `memTotalKb` | {'int': 1478} |
| `otherPssKb` | {'int': 1478} |
| `processes` | {'int': 1478} |
| `pssFallbackProcesses` | {'int': 1478} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
