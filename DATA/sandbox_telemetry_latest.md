# sandbox_telemetry_parse — 2026-11-28 09:50:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=832171 lines=1846
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1838 |
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
| `chromeBrowserPssKb` | {'int': 1838} |
| `chromeGpuPssKb` | {'int': 1838} |
| `chromeOtherPssKb` | {'int': 1838} |
| `chromeProcesses` | {'int': 1838} |
| `chromeProfiles` | {'int': 1838} |
| `chromeRendererMaxPssKb` | {'int': 1838} |
| `chromeRendererPssKb` | {'int': 1838} |
| `chromeRenderers` | {'int': 1838} |
| `chromeTabs` | {'int': 1838} |
| `chromeTabsProbedProfiles` | {'int': 1838} |
| `chromeUtilityPssKb` | {'int': 1838} |
| `desktopPssKb` | {'int': 1838} |
| `hostPssKb` | {'int': 1838} |
| `kind` | {'str': 1838} |
| `memAvailableKb` | {'int': 1838} |
| `memTotalKb` | {'int': 1838} |
| `otherPssKb` | {'int': 1838} |
| `processes` | {'int': 1838} |
| `pssFallbackProcesses` | {'int': 1838} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
