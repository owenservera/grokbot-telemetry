# sandbox_telemetry_parse — 2026-11-09 19:25:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=809174 lines=1796
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1787 |
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
| `chromeBrowserPssKb` | {'int': 1787} |
| `chromeGpuPssKb` | {'int': 1787} |
| `chromeOtherPssKb` | {'int': 1787} |
| `chromeProcesses` | {'int': 1787} |
| `chromeProfiles` | {'int': 1787} |
| `chromeRendererMaxPssKb` | {'int': 1787} |
| `chromeRendererPssKb` | {'int': 1787} |
| `chromeRenderers` | {'int': 1787} |
| `chromeTabs` | {'int': 1787} |
| `chromeTabsProbedProfiles` | {'int': 1787} |
| `chromeUtilityPssKb` | {'int': 1787} |
| `desktopPssKb` | {'int': 1787} |
| `hostPssKb` | {'int': 1787} |
| `kind` | {'str': 1787} |
| `memAvailableKb` | {'int': 1787} |
| `memTotalKb` | {'int': 1787} |
| `otherPssKb` | {'int': 1787} |
| `processes` | {'int': 1787} |
| `pssFallbackProcesses` | {'int': 1787} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
