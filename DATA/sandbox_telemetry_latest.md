# sandbox_telemetry_parse — 2026-11-12 11:59:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2118679 lines=4690
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4681 |
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
| `chromeBrowserPssKb` | {'int': 4681} |
| `chromeGpuPssKb` | {'int': 4681} |
| `chromeOtherPssKb` | {'int': 4681} |
| `chromeProcesses` | {'int': 4681} |
| `chromeProfiles` | {'int': 4681} |
| `chromeRendererMaxPssKb` | {'int': 4681} |
| `chromeRendererPssKb` | {'int': 4681} |
| `chromeRenderers` | {'int': 4681} |
| `chromeTabs` | {'int': 4681} |
| `chromeTabsProbedProfiles` | {'int': 4681} |
| `chromeUtilityPssKb` | {'int': 4681} |
| `desktopPssKb` | {'int': 4681} |
| `hostPssKb` | {'int': 4681} |
| `kind` | {'str': 4681} |
| `memAvailableKb` | {'int': 4681} |
| `memTotalKb` | {'int': 4681} |
| `otherPssKb` | {'int': 4681} |
| `processes` | {'int': 4681} |
| `pssFallbackProcesses` | {'int': 4681} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
