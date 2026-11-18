# sandbox_telemetry_parse — 2026-11-18 09:47:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=768332 lines=1705
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1698 |
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
| `chromeBrowserPssKb` | {'int': 1698} |
| `chromeGpuPssKb` | {'int': 1698} |
| `chromeOtherPssKb` | {'int': 1698} |
| `chromeProcesses` | {'int': 1698} |
| `chromeProfiles` | {'int': 1698} |
| `chromeRendererMaxPssKb` | {'int': 1698} |
| `chromeRendererPssKb` | {'int': 1698} |
| `chromeRenderers` | {'int': 1698} |
| `chromeTabs` | {'int': 1698} |
| `chromeTabsProbedProfiles` | {'int': 1698} |
| `chromeUtilityPssKb` | {'int': 1698} |
| `desktopPssKb` | {'int': 1698} |
| `hostPssKb` | {'int': 1698} |
| `kind` | {'str': 1698} |
| `memAvailableKb` | {'int': 1698} |
| `memTotalKb` | {'int': 1698} |
| `otherPssKb` | {'int': 1698} |
| `processes` | {'int': 1698} |
| `pssFallbackProcesses` | {'int': 1698} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
