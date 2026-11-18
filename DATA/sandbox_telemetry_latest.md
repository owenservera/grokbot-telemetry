# sandbox_telemetry_parse — 2026-11-18 10:58:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=790938 lines=1755
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1748 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1748} |
| `chromeGpuPssKb` | {'int': 1748} |
| `chromeOtherPssKb` | {'int': 1748} |
| `chromeProcesses` | {'int': 1748} |
| `chromeProfiles` | {'int': 1748} |
| `chromeRendererMaxPssKb` | {'int': 1748} |
| `chromeRendererPssKb` | {'int': 1748} |
| `chromeRenderers` | {'int': 1748} |
| `chromeTabs` | {'int': 1748} |
| `chromeTabsProbedProfiles` | {'int': 1748} |
| `chromeUtilityPssKb` | {'int': 1748} |
| `desktopPssKb` | {'int': 1748} |
| `hostPssKb` | {'int': 1748} |
| `kind` | {'str': 1748} |
| `memAvailableKb` | {'int': 1748} |
| `memTotalKb` | {'int': 1748} |
| `otherPssKb` | {'int': 1748} |
| `processes` | {'int': 1748} |
| `pssFallbackProcesses` | {'int': 1748} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
