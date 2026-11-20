# sandbox_telemetry_parse — 2026-11-20 11:15:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1691772 lines=3750
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3739 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3739} |
| `chromeGpuPssKb` | {'int': 3739} |
| `chromeOtherPssKb` | {'int': 3739} |
| `chromeProcesses` | {'int': 3739} |
| `chromeProfiles` | {'int': 3739} |
| `chromeRendererMaxPssKb` | {'int': 3739} |
| `chromeRendererPssKb` | {'int': 3739} |
| `chromeRenderers` | {'int': 3739} |
| `chromeTabs` | {'int': 3739} |
| `chromeTabsProbedProfiles` | {'int': 3739} |
| `chromeUtilityPssKb` | {'int': 3739} |
| `desktopPssKb` | {'int': 3739} |
| `hostPssKb` | {'int': 3739} |
| `kind` | {'str': 3739} |
| `memAvailableKb` | {'int': 3739} |
| `memTotalKb` | {'int': 3739} |
| `otherPssKb` | {'int': 3739} |
| `processes` | {'int': 3739} |
| `pssFallbackProcesses` | {'int': 3739} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
