# sandbox_telemetry_parse — 2026-10-27 04:41:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=325492 lines=723
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 718 |
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
| `chromeBrowserPssKb` | {'int': 718} |
| `chromeGpuPssKb` | {'int': 718} |
| `chromeOtherPssKb` | {'int': 718} |
| `chromeProcesses` | {'int': 718} |
| `chromeProfiles` | {'int': 718} |
| `chromeRendererMaxPssKb` | {'int': 718} |
| `chromeRendererPssKb` | {'int': 718} |
| `chromeRenderers` | {'int': 718} |
| `chromeTabs` | {'int': 718} |
| `chromeTabsProbedProfiles` | {'int': 718} |
| `chromeUtilityPssKb` | {'int': 718} |
| `desktopPssKb` | {'int': 718} |
| `hostPssKb` | {'int': 718} |
| `kind` | {'str': 718} |
| `memAvailableKb` | {'int': 718} |
| `memTotalKb` | {'int': 718} |
| `otherPssKb` | {'int': 718} |
| `processes` | {'int': 718} |
| `pssFallbackProcesses` | {'int': 718} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
