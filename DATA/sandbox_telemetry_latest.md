# sandbox_telemetry_parse — 2026-11-10 20:31:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1307396 lines=2897
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2888 |
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
| `chromeBrowserPssKb` | {'int': 2888} |
| `chromeGpuPssKb` | {'int': 2888} |
| `chromeOtherPssKb` | {'int': 2888} |
| `chromeProcesses` | {'int': 2888} |
| `chromeProfiles` | {'int': 2888} |
| `chromeRendererMaxPssKb` | {'int': 2888} |
| `chromeRendererPssKb` | {'int': 2888} |
| `chromeRenderers` | {'int': 2888} |
| `chromeTabs` | {'int': 2888} |
| `chromeTabsProbedProfiles` | {'int': 2888} |
| `chromeUtilityPssKb` | {'int': 2888} |
| `desktopPssKb` | {'int': 2888} |
| `hostPssKb` | {'int': 2888} |
| `kind` | {'str': 2888} |
| `memAvailableKb` | {'int': 2888} |
| `memTotalKb` | {'int': 2888} |
| `otherPssKb` | {'int': 2888} |
| `processes` | {'int': 2888} |
| `pssFallbackProcesses` | {'int': 2888} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
