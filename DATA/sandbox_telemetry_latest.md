# sandbox_telemetry_parse — 2026-10-06 23:49:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=676442 lines=1488
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1483 |
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
| `chromeBrowserPssKb` | {'int': 1483} |
| `chromeGpuPssKb` | {'int': 1483} |
| `chromeOtherPssKb` | {'int': 1483} |
| `chromeProcesses` | {'int': 1483} |
| `chromeProfiles` | {'int': 1483} |
| `chromeRendererMaxPssKb` | {'int': 1483} |
| `chromeRendererPssKb` | {'int': 1483} |
| `chromeRenderers` | {'int': 1483} |
| `chromeTabs` | {'int': 1483} |
| `chromeTabsProbedProfiles` | {'int': 1483} |
| `chromeUtilityPssKb` | {'int': 1483} |
| `desktopPssKb` | {'int': 1483} |
| `hostPssKb` | {'int': 1483} |
| `kind` | {'str': 1483} |
| `memAvailableKb` | {'int': 1483} |
| `memTotalKb` | {'int': 1483} |
| `otherPssKb` | {'int': 1483} |
| `processes` | {'int': 1483} |
| `pssFallbackProcesses` | {'int': 1483} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
