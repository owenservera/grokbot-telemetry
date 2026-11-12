# sandbox_telemetry_parse — 2026-11-12 11:03:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2097873 lines=4644
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4635 |
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
| `chromeBrowserPssKb` | {'int': 4635} |
| `chromeGpuPssKb` | {'int': 4635} |
| `chromeOtherPssKb` | {'int': 4635} |
| `chromeProcesses` | {'int': 4635} |
| `chromeProfiles` | {'int': 4635} |
| `chromeRendererMaxPssKb` | {'int': 4635} |
| `chromeRendererPssKb` | {'int': 4635} |
| `chromeRenderers` | {'int': 4635} |
| `chromeTabs` | {'int': 4635} |
| `chromeTabsProbedProfiles` | {'int': 4635} |
| `chromeUtilityPssKb` | {'int': 4635} |
| `desktopPssKb` | {'int': 4635} |
| `hostPssKb` | {'int': 4635} |
| `kind` | {'str': 4635} |
| `memAvailableKb` | {'int': 4635} |
| `memTotalKb` | {'int': 4635} |
| `otherPssKb` | {'int': 4635} |
| `processes` | {'int': 4635} |
| `pssFallbackProcesses` | {'int': 4635} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
