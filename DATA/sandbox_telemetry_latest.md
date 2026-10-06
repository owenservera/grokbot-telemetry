# sandbox_telemetry_parse — 2026-10-06 18:37:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=535082 lines=1178
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1173 |
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
| `chromeBrowserPssKb` | {'int': 1173} |
| `chromeGpuPssKb` | {'int': 1173} |
| `chromeOtherPssKb` | {'int': 1173} |
| `chromeProcesses` | {'int': 1173} |
| `chromeProfiles` | {'int': 1173} |
| `chromeRendererMaxPssKb` | {'int': 1173} |
| `chromeRendererPssKb` | {'int': 1173} |
| `chromeRenderers` | {'int': 1173} |
| `chromeTabs` | {'int': 1173} |
| `chromeTabsProbedProfiles` | {'int': 1173} |
| `chromeUtilityPssKb` | {'int': 1173} |
| `desktopPssKb` | {'int': 1173} |
| `hostPssKb` | {'int': 1173} |
| `kind` | {'str': 1173} |
| `memAvailableKb` | {'int': 1173} |
| `memTotalKb` | {'int': 1173} |
| `otherPssKb` | {'int': 1173} |
| `processes` | {'int': 1173} |
| `pssFallbackProcesses` | {'int': 1173} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
