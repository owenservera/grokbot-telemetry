# sandbox_telemetry_parse — 2026-11-12 11:06:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2099681 lines=4648
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4639 |
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
| `chromeBrowserPssKb` | {'int': 4639} |
| `chromeGpuPssKb` | {'int': 4639} |
| `chromeOtherPssKb` | {'int': 4639} |
| `chromeProcesses` | {'int': 4639} |
| `chromeProfiles` | {'int': 4639} |
| `chromeRendererMaxPssKb` | {'int': 4639} |
| `chromeRendererPssKb` | {'int': 4639} |
| `chromeRenderers` | {'int': 4639} |
| `chromeTabs` | {'int': 4639} |
| `chromeTabsProbedProfiles` | {'int': 4639} |
| `chromeUtilityPssKb` | {'int': 4639} |
| `desktopPssKb` | {'int': 4639} |
| `hostPssKb` | {'int': 4639} |
| `kind` | {'str': 4639} |
| `memAvailableKb` | {'int': 4639} |
| `memTotalKb` | {'int': 4639} |
| `otherPssKb` | {'int': 4639} |
| `processes` | {'int': 4639} |
| `pssFallbackProcesses` | {'int': 4639} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
