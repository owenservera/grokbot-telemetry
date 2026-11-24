# sandbox_telemetry_parse — 2026-11-24 01:11:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2068105 lines=4585
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4570 |
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
| `chromeBrowserPssKb` | {'int': 4570} |
| `chromeGpuPssKb` | {'int': 4570} |
| `chromeOtherPssKb` | {'int': 4570} |
| `chromeProcesses` | {'int': 4570} |
| `chromeProfiles` | {'int': 4570} |
| `chromeRendererMaxPssKb` | {'int': 4570} |
| `chromeRendererPssKb` | {'int': 4570} |
| `chromeRenderers` | {'int': 4570} |
| `chromeTabs` | {'int': 4570} |
| `chromeTabsProbedProfiles` | {'int': 4570} |
| `chromeUtilityPssKb` | {'int': 4570} |
| `desktopPssKb` | {'int': 4570} |
| `hostPssKb` | {'int': 4570} |
| `kind` | {'str': 4570} |
| `memAvailableKb` | {'int': 4570} |
| `memTotalKb` | {'int': 4570} |
| `otherPssKb` | {'int': 4570} |
| `processes` | {'int': 4570} |
| `pssFallbackProcesses` | {'int': 4570} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
