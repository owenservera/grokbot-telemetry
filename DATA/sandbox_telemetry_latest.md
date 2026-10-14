# sandbox_telemetry_parse — 2026-10-14 20:46:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=479942 lines=1066
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1061 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1061} |
| `chromeGpuPssKb` | {'int': 1061} |
| `chromeOtherPssKb` | {'int': 1061} |
| `chromeProcesses` | {'int': 1061} |
| `chromeProfiles` | {'int': 1061} |
| `chromeRendererMaxPssKb` | {'int': 1061} |
| `chromeRendererPssKb` | {'int': 1061} |
| `chromeRenderers` | {'int': 1061} |
| `chromeTabs` | {'int': 1061} |
| `chromeTabsProbedProfiles` | {'int': 1061} |
| `chromeUtilityPssKb` | {'int': 1061} |
| `desktopPssKb` | {'int': 1061} |
| `hostPssKb` | {'int': 1061} |
| `kind` | {'str': 1061} |
| `memAvailableKb` | {'int': 1061} |
| `memTotalKb` | {'int': 1061} |
| `otherPssKb` | {'int': 1061} |
| `processes` | {'int': 1061} |
| `pssFallbackProcesses` | {'int': 1061} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
