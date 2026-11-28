# sandbox_telemetry_parse — 2026-11-28 18:51:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1011873 lines=2243
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2235 |
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
| `chromeBrowserPssKb` | {'int': 2235} |
| `chromeGpuPssKb` | {'int': 2235} |
| `chromeOtherPssKb` | {'int': 2235} |
| `chromeProcesses` | {'int': 2235} |
| `chromeProfiles` | {'int': 2235} |
| `chromeRendererMaxPssKb` | {'int': 2235} |
| `chromeRendererPssKb` | {'int': 2235} |
| `chromeRenderers` | {'int': 2235} |
| `chromeTabs` | {'int': 2235} |
| `chromeTabsProbedProfiles` | {'int': 2235} |
| `chromeUtilityPssKb` | {'int': 2235} |
| `desktopPssKb` | {'int': 2235} |
| `hostPssKb` | {'int': 2235} |
| `kind` | {'str': 2235} |
| `memAvailableKb` | {'int': 2235} |
| `memTotalKb` | {'int': 2235} |
| `otherPssKb` | {'int': 2235} |
| `processes` | {'int': 2235} |
| `pssFallbackProcesses` | {'int': 2235} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
