# sandbox_telemetry_parse — 2026-11-24 22:41:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2481135 lines=5498
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5483 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5483} |
| `chromeGpuPssKb` | {'int': 5483} |
| `chromeOtherPssKb` | {'int': 5483} |
| `chromeProcesses` | {'int': 5483} |
| `chromeProfiles` | {'int': 5483} |
| `chromeRendererMaxPssKb` | {'int': 5483} |
| `chromeRendererPssKb` | {'int': 5483} |
| `chromeRenderers` | {'int': 5483} |
| `chromeTabs` | {'int': 5483} |
| `chromeTabsProbedProfiles` | {'int': 5483} |
| `chromeUtilityPssKb` | {'int': 5483} |
| `desktopPssKb` | {'int': 5483} |
| `hostPssKb` | {'int': 5483} |
| `kind` | {'str': 5483} |
| `memAvailableKb` | {'int': 5483} |
| `memTotalKb` | {'int': 5483} |
| `otherPssKb` | {'int': 5483} |
| `processes` | {'int': 5483} |
| `pssFallbackProcesses` | {'int': 5483} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
