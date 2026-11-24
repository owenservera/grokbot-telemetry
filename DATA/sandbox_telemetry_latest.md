# sandbox_telemetry_parse — 2026-11-24 06:27:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2166681 lines=4803
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4788 |
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
| `chromeBrowserPssKb` | {'int': 4788} |
| `chromeGpuPssKb` | {'int': 4788} |
| `chromeOtherPssKb` | {'int': 4788} |
| `chromeProcesses` | {'int': 4788} |
| `chromeProfiles` | {'int': 4788} |
| `chromeRendererMaxPssKb` | {'int': 4788} |
| `chromeRendererPssKb` | {'int': 4788} |
| `chromeRenderers` | {'int': 4788} |
| `chromeTabs` | {'int': 4788} |
| `chromeTabsProbedProfiles` | {'int': 4788} |
| `chromeUtilityPssKb` | {'int': 4788} |
| `desktopPssKb` | {'int': 4788} |
| `hostPssKb` | {'int': 4788} |
| `kind` | {'str': 4788} |
| `memAvailableKb` | {'int': 4788} |
| `memTotalKb` | {'int': 4788} |
| `otherPssKb` | {'int': 4788} |
| `processes` | {'int': 4788} |
| `pssFallbackProcesses` | {'int': 4788} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
