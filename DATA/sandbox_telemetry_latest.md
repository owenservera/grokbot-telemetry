# sandbox_telemetry_parse — 2026-10-27 09:36:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=444368 lines=986
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 981 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 981} |
| `chromeGpuPssKb` | {'int': 981} |
| `chromeOtherPssKb` | {'int': 981} |
| `chromeProcesses` | {'int': 981} |
| `chromeProfiles` | {'int': 981} |
| `chromeRendererMaxPssKb` | {'int': 981} |
| `chromeRendererPssKb` | {'int': 981} |
| `chromeRenderers` | {'int': 981} |
| `chromeTabs` | {'int': 981} |
| `chromeTabsProbedProfiles` | {'int': 981} |
| `chromeUtilityPssKb` | {'int': 981} |
| `desktopPssKb` | {'int': 981} |
| `hostPssKb` | {'int': 981} |
| `kind` | {'str': 981} |
| `memAvailableKb` | {'int': 981} |
| `memTotalKb` | {'int': 981} |
| `otherPssKb` | {'int': 981} |
| `processes` | {'int': 981} |
| `pssFallbackProcesses` | {'int': 981} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
