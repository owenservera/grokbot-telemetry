# sandbox_telemetry_parse — 2026-11-11 11:53:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1615905 lines=3579
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3570 |
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
| `chromeBrowserPssKb` | {'int': 3570} |
| `chromeGpuPssKb` | {'int': 3570} |
| `chromeOtherPssKb` | {'int': 3570} |
| `chromeProcesses` | {'int': 3570} |
| `chromeProfiles` | {'int': 3570} |
| `chromeRendererMaxPssKb` | {'int': 3570} |
| `chromeRendererPssKb` | {'int': 3570} |
| `chromeRenderers` | {'int': 3570} |
| `chromeTabs` | {'int': 3570} |
| `chromeTabsProbedProfiles` | {'int': 3570} |
| `chromeUtilityPssKb` | {'int': 3570} |
| `desktopPssKb` | {'int': 3570} |
| `hostPssKb` | {'int': 3570} |
| `kind` | {'str': 3570} |
| `memAvailableKb` | {'int': 3570} |
| `memTotalKb` | {'int': 3570} |
| `otherPssKb` | {'int': 3570} |
| `processes` | {'int': 3570} |
| `pssFallbackProcesses` | {'int': 3570} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
