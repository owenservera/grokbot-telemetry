# sandbox_telemetry_parse — 2026-10-15 05:34:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=690122 lines=1531
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1526 |
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
| `chromeBrowserPssKb` | {'int': 1526} |
| `chromeGpuPssKb` | {'int': 1526} |
| `chromeOtherPssKb` | {'int': 1526} |
| `chromeProcesses` | {'int': 1526} |
| `chromeProfiles` | {'int': 1526} |
| `chromeRendererMaxPssKb` | {'int': 1526} |
| `chromeRendererPssKb` | {'int': 1526} |
| `chromeRenderers` | {'int': 1526} |
| `chromeTabs` | {'int': 1526} |
| `chromeTabsProbedProfiles` | {'int': 1526} |
| `chromeUtilityPssKb` | {'int': 1526} |
| `desktopPssKb` | {'int': 1526} |
| `hostPssKb` | {'int': 1526} |
| `kind` | {'str': 1526} |
| `memAvailableKb` | {'int': 1526} |
| `memTotalKb` | {'int': 1526} |
| `otherPssKb` | {'int': 1526} |
| `processes` | {'int': 1526} |
| `pssFallbackProcesses` | {'int': 1526} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
