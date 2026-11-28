# sandbox_telemetry_parse — 2026-11-28 18:25:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1003266 lines=2224
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2216 |
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
