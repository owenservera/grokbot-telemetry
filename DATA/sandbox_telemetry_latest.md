# sandbox_telemetry_parse — 2026-11-09 16:15:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=736254 lines=1635
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1626 |
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
| `chromeBrowserPssKb` | {'int': 1626} |
| `chromeGpuPssKb` | {'int': 1626} |
| `chromeOtherPssKb` | {'int': 1626} |
| `chromeProcesses` | {'int': 1626} |
| `chromeProfiles` | {'int': 1626} |
| `chromeRendererMaxPssKb` | {'int': 1626} |
| `chromeRendererPssKb` | {'int': 1626} |
| `chromeRenderers` | {'int': 1626} |
| `chromeTabs` | {'int': 1626} |
| `chromeTabsProbedProfiles` | {'int': 1626} |
| `chromeUtilityPssKb` | {'int': 1626} |
| `desktopPssKb` | {'int': 1626} |
| `hostPssKb` | {'int': 1626} |
| `kind` | {'str': 1626} |
| `memAvailableKb` | {'int': 1626} |
| `memTotalKb` | {'int': 1626} |
| `otherPssKb` | {'int': 1626} |
| `processes` | {'int': 1626} |
| `pssFallbackProcesses` | {'int': 1626} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
