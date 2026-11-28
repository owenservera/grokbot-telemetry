# sandbox_telemetry_parse — 2026-11-28 06:59:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=780168 lines=1731
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1723 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1723} |
| `chromeGpuPssKb` | {'int': 1723} |
| `chromeOtherPssKb` | {'int': 1723} |
| `chromeProcesses` | {'int': 1723} |
| `chromeProfiles` | {'int': 1723} |
| `chromeRendererMaxPssKb` | {'int': 1723} |
| `chromeRendererPssKb` | {'int': 1723} |
| `chromeRenderers` | {'int': 1723} |
| `chromeTabs` | {'int': 1723} |
| `chromeTabsProbedProfiles` | {'int': 1723} |
| `chromeUtilityPssKb` | {'int': 1723} |
| `desktopPssKb` | {'int': 1723} |
| `hostPssKb` | {'int': 1723} |
| `kind` | {'str': 1723} |
| `memAvailableKb` | {'int': 1723} |
| `memTotalKb` | {'int': 1723} |
| `otherPssKb` | {'int': 1723} |
| `processes` | {'int': 1723} |
| `pssFallbackProcesses` | {'int': 1723} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
