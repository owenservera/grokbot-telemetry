# sandbox_telemetry_parse — 2026-11-11 16:38:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1719533 lines=3808
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3799 |
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
| `chromeBrowserPssKb` | {'int': 3799} |
| `chromeGpuPssKb` | {'int': 3799} |
| `chromeOtherPssKb` | {'int': 3799} |
| `chromeProcesses` | {'int': 3799} |
| `chromeProfiles` | {'int': 3799} |
| `chromeRendererMaxPssKb` | {'int': 3799} |
| `chromeRendererPssKb` | {'int': 3799} |
| `chromeRenderers` | {'int': 3799} |
| `chromeTabs` | {'int': 3799} |
| `chromeTabsProbedProfiles` | {'int': 3799} |
| `chromeUtilityPssKb` | {'int': 3799} |
| `desktopPssKb` | {'int': 3799} |
| `hostPssKb` | {'int': 3799} |
| `kind` | {'str': 3799} |
| `memAvailableKb` | {'int': 3799} |
| `memTotalKb` | {'int': 3799} |
| `otherPssKb` | {'int': 3799} |
| `processes` | {'int': 3799} |
| `pssFallbackProcesses` | {'int': 3799} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
