# sandbox_telemetry_parse — 2026-11-25 14:14:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2789090 lines=6179
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6164 |
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
| `chromeBrowserPssKb` | {'int': 6164} |
| `chromeGpuPssKb` | {'int': 6164} |
| `chromeOtherPssKb` | {'int': 6164} |
| `chromeProcesses` | {'int': 6164} |
| `chromeProfiles` | {'int': 6164} |
| `chromeRendererMaxPssKb` | {'int': 6164} |
| `chromeRendererPssKb` | {'int': 6164} |
| `chromeRenderers` | {'int': 6164} |
| `chromeTabs` | {'int': 6164} |
| `chromeTabsProbedProfiles` | {'int': 6164} |
| `chromeUtilityPssKb` | {'int': 6164} |
| `desktopPssKb` | {'int': 6164} |
| `hostPssKb` | {'int': 6164} |
| `kind` | {'str': 6164} |
| `memAvailableKb` | {'int': 6164} |
| `memTotalKb` | {'int': 6164} |
| `otherPssKb` | {'int': 6164} |
| `processes` | {'int': 6164} |
| `pssFallbackProcesses` | {'int': 6164} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
