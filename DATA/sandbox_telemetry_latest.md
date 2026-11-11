# sandbox_telemetry_parse — 2026-11-11 17:59:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1749854 lines=3875
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3866 |
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
| `chromeBrowserPssKb` | {'int': 3866} |
| `chromeGpuPssKb` | {'int': 3866} |
| `chromeOtherPssKb` | {'int': 3866} |
| `chromeProcesses` | {'int': 3866} |
| `chromeProfiles` | {'int': 3866} |
| `chromeRendererMaxPssKb` | {'int': 3866} |
| `chromeRendererPssKb` | {'int': 3866} |
| `chromeRenderers` | {'int': 3866} |
| `chromeTabs` | {'int': 3866} |
| `chromeTabsProbedProfiles` | {'int': 3866} |
| `chromeUtilityPssKb` | {'int': 3866} |
| `desktopPssKb` | {'int': 3866} |
| `hostPssKb` | {'int': 3866} |
| `kind` | {'str': 3866} |
| `memAvailableKb` | {'int': 3866} |
| `memTotalKb` | {'int': 3866} |
| `otherPssKb` | {'int': 3866} |
| `processes` | {'int': 3866} |
| `pssFallbackProcesses` | {'int': 3866} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
