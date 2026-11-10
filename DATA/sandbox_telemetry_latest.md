# sandbox_telemetry_parse — 2026-11-10 20:20:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1303775 lines=2889
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2880 |
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
| `chromeBrowserPssKb` | {'int': 2880} |
| `chromeGpuPssKb` | {'int': 2880} |
| `chromeOtherPssKb` | {'int': 2880} |
| `chromeProcesses` | {'int': 2880} |
| `chromeProfiles` | {'int': 2880} |
| `chromeRendererMaxPssKb` | {'int': 2880} |
| `chromeRendererPssKb` | {'int': 2880} |
| `chromeRenderers` | {'int': 2880} |
| `chromeTabs` | {'int': 2880} |
| `chromeTabsProbedProfiles` | {'int': 2880} |
| `chromeUtilityPssKb` | {'int': 2880} |
| `desktopPssKb` | {'int': 2880} |
| `hostPssKb` | {'int': 2880} |
| `kind` | {'str': 2880} |
| `memAvailableKb` | {'int': 2880} |
| `memTotalKb` | {'int': 2880} |
| `otherPssKb` | {'int': 2880} |
| `processes` | {'int': 2880} |
| `pssFallbackProcesses` | {'int': 2880} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
