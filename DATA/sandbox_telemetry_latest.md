# sandbox_telemetry_parse — 2026-10-12 21:37:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=671608 lines=1490
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1485 |
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
| `chromeBrowserPssKb` | {'int': 1485} |
| `chromeGpuPssKb` | {'int': 1485} |
| `chromeOtherPssKb` | {'int': 1485} |
| `chromeProcesses` | {'int': 1485} |
| `chromeProfiles` | {'int': 1485} |
| `chromeRendererMaxPssKb` | {'int': 1485} |
| `chromeRendererPssKb` | {'int': 1485} |
| `chromeRenderers` | {'int': 1485} |
| `chromeTabs` | {'int': 1485} |
| `chromeTabsProbedProfiles` | {'int': 1485} |
| `chromeUtilityPssKb` | {'int': 1485} |
| `desktopPssKb` | {'int': 1485} |
| `hostPssKb` | {'int': 1485} |
| `kind` | {'str': 1485} |
| `memAvailableKb` | {'int': 1485} |
| `memTotalKb` | {'int': 1485} |
| `otherPssKb` | {'int': 1485} |
| `processes` | {'int': 1485} |
| `pssFallbackProcesses` | {'int': 1485} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
