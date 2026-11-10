# sandbox_telemetry_parse — 2026-11-10 05:29:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1003218 lines=2225
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2216 |
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
| `chromeBrowserPssKb` | {'int': 2216} |
| `chromeGpuPssKb` | {'int': 2216} |
| `chromeOtherPssKb` | {'int': 2216} |
| `chromeProcesses` | {'int': 2216} |
| `chromeProfiles` | {'int': 2216} |
| `chromeRendererMaxPssKb` | {'int': 2216} |
| `chromeRendererPssKb` | {'int': 2216} |
| `chromeRenderers` | {'int': 2216} |
| `chromeTabs` | {'int': 2216} |
| `chromeTabsProbedProfiles` | {'int': 2216} |
| `chromeUtilityPssKb` | {'int': 2216} |
| `desktopPssKb` | {'int': 2216} |
| `hostPssKb` | {'int': 2216} |
| `kind` | {'str': 2216} |
| `memAvailableKb` | {'int': 2216} |
| `memTotalKb` | {'int': 2216} |
| `otherPssKb` | {'int': 2216} |
| `processes` | {'int': 2216} |
| `pssFallbackProcesses` | {'int': 2216} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
