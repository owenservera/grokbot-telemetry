# sandbox_telemetry_parse — 2026-11-28 08:19:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=803679 lines=1783
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1775 |
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
| `chromeBrowserPssKb` | {'int': 1775} |
| `chromeGpuPssKb` | {'int': 1775} |
| `chromeOtherPssKb` | {'int': 1775} |
| `chromeProcesses` | {'int': 1775} |
| `chromeProfiles` | {'int': 1775} |
| `chromeRendererMaxPssKb` | {'int': 1775} |
| `chromeRendererPssKb` | {'int': 1775} |
| `chromeRenderers` | {'int': 1775} |
| `chromeTabs` | {'int': 1775} |
| `chromeTabsProbedProfiles` | {'int': 1775} |
| `chromeUtilityPssKb` | {'int': 1775} |
| `desktopPssKb` | {'int': 1775} |
| `hostPssKb` | {'int': 1775} |
| `kind` | {'str': 1775} |
| `memAvailableKb` | {'int': 1775} |
| `memTotalKb` | {'int': 1775} |
| `otherPssKb` | {'int': 1775} |
| `processes` | {'int': 1775} |
| `pssFallbackProcesses` | {'int': 1775} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
