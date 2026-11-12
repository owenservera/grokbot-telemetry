# sandbox_telemetry_parse — 2026-11-12 21:10:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2331548 lines=5160
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5151 |
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
| `chromeBrowserPssKb` | {'int': 5151} |
| `chromeGpuPssKb` | {'int': 5151} |
| `chromeOtherPssKb` | {'int': 5151} |
| `chromeProcesses` | {'int': 5151} |
| `chromeProfiles` | {'int': 5151} |
| `chromeRendererMaxPssKb` | {'int': 5151} |
| `chromeRendererPssKb` | {'int': 5151} |
| `chromeRenderers` | {'int': 5151} |
| `chromeTabs` | {'int': 5151} |
| `chromeTabsProbedProfiles` | {'int': 5151} |
| `chromeUtilityPssKb` | {'int': 5151} |
| `desktopPssKb` | {'int': 5151} |
| `hostPssKb` | {'int': 5151} |
| `kind` | {'str': 5151} |
| `memAvailableKb` | {'int': 5151} |
| `memTotalKb` | {'int': 5151} |
| `otherPssKb` | {'int': 5151} |
| `processes` | {'int': 5151} |
| `pssFallbackProcesses` | {'int': 5151} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
