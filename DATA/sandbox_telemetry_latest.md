# sandbox_telemetry_parse — 2026-11-09 20:58:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=835858 lines=1855
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1846 |
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
| `chromeBrowserPssKb` | {'int': 1846} |
| `chromeGpuPssKb` | {'int': 1846} |
| `chromeOtherPssKb` | {'int': 1846} |
| `chromeProcesses` | {'int': 1846} |
| `chromeProfiles` | {'int': 1846} |
| `chromeRendererMaxPssKb` | {'int': 1846} |
| `chromeRendererPssKb` | {'int': 1846} |
| `chromeRenderers` | {'int': 1846} |
| `chromeTabs` | {'int': 1846} |
| `chromeTabsProbedProfiles` | {'int': 1846} |
| `chromeUtilityPssKb` | {'int': 1846} |
| `desktopPssKb` | {'int': 1846} |
| `hostPssKb` | {'int': 1846} |
| `kind` | {'str': 1846} |
| `memAvailableKb` | {'int': 1846} |
| `memTotalKb` | {'int': 1846} |
| `otherPssKb` | {'int': 1846} |
| `processes` | {'int': 1846} |
| `pssFallbackProcesses` | {'int': 1846} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
