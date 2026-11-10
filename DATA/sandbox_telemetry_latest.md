# sandbox_telemetry_parse — 2026-11-10 14:38:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1182898 lines=2622
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2613 |
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
| `chromeBrowserPssKb` | {'int': 2613} |
| `chromeGpuPssKb` | {'int': 2613} |
| `chromeOtherPssKb` | {'int': 2613} |
| `chromeProcesses` | {'int': 2613} |
| `chromeProfiles` | {'int': 2613} |
| `chromeRendererMaxPssKb` | {'int': 2613} |
| `chromeRendererPssKb` | {'int': 2613} |
| `chromeRenderers` | {'int': 2613} |
| `chromeTabs` | {'int': 2613} |
| `chromeTabsProbedProfiles` | {'int': 2613} |
| `chromeUtilityPssKb` | {'int': 2613} |
| `desktopPssKb` | {'int': 2613} |
| `hostPssKb` | {'int': 2613} |
| `kind` | {'str': 2613} |
| `memAvailableKb` | {'int': 2613} |
| `memTotalKb` | {'int': 2613} |
| `otherPssKb` | {'int': 2613} |
| `processes` | {'int': 2613} |
| `pssFallbackProcesses` | {'int': 2613} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
