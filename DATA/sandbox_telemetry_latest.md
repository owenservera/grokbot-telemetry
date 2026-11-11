# sandbox_telemetry_parse — 2026-11-11 15:54:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1702780 lines=3771
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3762 |
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
| `chromeBrowserPssKb` | {'int': 3762} |
| `chromeGpuPssKb` | {'int': 3762} |
| `chromeOtherPssKb` | {'int': 3762} |
| `chromeProcesses` | {'int': 3762} |
| `chromeProfiles` | {'int': 3762} |
| `chromeRendererMaxPssKb` | {'int': 3762} |
| `chromeRendererPssKb` | {'int': 3762} |
| `chromeRenderers` | {'int': 3762} |
| `chromeTabs` | {'int': 3762} |
| `chromeTabsProbedProfiles` | {'int': 3762} |
| `chromeUtilityPssKb` | {'int': 3762} |
| `desktopPssKb` | {'int': 3762} |
| `hostPssKb` | {'int': 3762} |
| `kind` | {'str': 3762} |
| `memAvailableKb` | {'int': 3762} |
| `memTotalKb` | {'int': 3762} |
| `otherPssKb` | {'int': 3762} |
| `processes` | {'int': 3762} |
| `pssFallbackProcesses` | {'int': 3762} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
