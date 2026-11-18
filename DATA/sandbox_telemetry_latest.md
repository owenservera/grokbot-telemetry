# sandbox_telemetry_parse — 2026-11-18 13:54:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=844303 lines=1873
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1866 |
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
| `chromeBrowserPssKb` | {'int': 1866} |
| `chromeGpuPssKb` | {'int': 1866} |
| `chromeOtherPssKb` | {'int': 1866} |
| `chromeProcesses` | {'int': 1866} |
| `chromeProfiles` | {'int': 1866} |
| `chromeRendererMaxPssKb` | {'int': 1866} |
| `chromeRendererPssKb` | {'int': 1866} |
| `chromeRenderers` | {'int': 1866} |
| `chromeTabs` | {'int': 1866} |
| `chromeTabsProbedProfiles` | {'int': 1866} |
| `chromeUtilityPssKb` | {'int': 1866} |
| `desktopPssKb` | {'int': 1866} |
| `hostPssKb` | {'int': 1866} |
| `kind` | {'str': 1866} |
| `memAvailableKb` | {'int': 1866} |
| `memTotalKb` | {'int': 1866} |
| `otherPssKb` | {'int': 1866} |
| `processes` | {'int': 1866} |
| `pssFallbackProcesses` | {'int': 1866} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
