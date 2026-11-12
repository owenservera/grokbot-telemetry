# sandbox_telemetry_parse — 2026-11-12 08:38:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2048553 lines=4535
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4526 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4526} |
| `chromeGpuPssKb` | {'int': 4526} |
| `chromeOtherPssKb` | {'int': 4526} |
| `chromeProcesses` | {'int': 4526} |
| `chromeProfiles` | {'int': 4526} |
| `chromeRendererMaxPssKb` | {'int': 4526} |
| `chromeRendererPssKb` | {'int': 4526} |
| `chromeRenderers` | {'int': 4526} |
| `chromeTabs` | {'int': 4526} |
| `chromeTabsProbedProfiles` | {'int': 4526} |
| `chromeUtilityPssKb` | {'int': 4526} |
| `desktopPssKb` | {'int': 4526} |
| `hostPssKb` | {'int': 4526} |
| `kind` | {'str': 4526} |
| `memAvailableKb` | {'int': 4526} |
| `memTotalKb` | {'int': 4526} |
| `otherPssKb` | {'int': 4526} |
| `processes` | {'int': 4526} |
| `pssFallbackProcesses` | {'int': 4526} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
