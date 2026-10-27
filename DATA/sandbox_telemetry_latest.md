# sandbox_telemetry_parse — 2026-10-27 11:06:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=481957 lines=1069
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1064 |
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
| `chromeBrowserPssKb` | {'int': 1064} |
| `chromeGpuPssKb` | {'int': 1064} |
| `chromeOtherPssKb` | {'int': 1064} |
| `chromeProcesses` | {'int': 1064} |
| `chromeProfiles` | {'int': 1064} |
| `chromeRendererMaxPssKb` | {'int': 1064} |
| `chromeRendererPssKb` | {'int': 1064} |
| `chromeRenderers` | {'int': 1064} |
| `chromeTabs` | {'int': 1064} |
| `chromeTabsProbedProfiles` | {'int': 1064} |
| `chromeUtilityPssKb` | {'int': 1064} |
| `desktopPssKb` | {'int': 1064} |
| `hostPssKb` | {'int': 1064} |
| `kind` | {'str': 1064} |
| `memAvailableKb` | {'int': 1064} |
| `memTotalKb` | {'int': 1064} |
| `otherPssKb` | {'int': 1064} |
| `processes` | {'int': 1064} |
| `pssFallbackProcesses` | {'int': 1064} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
