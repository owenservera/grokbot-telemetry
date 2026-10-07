# sandbox_telemetry_parse — 2026-10-07 10:31:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=965269 lines=2121
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2116 |
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
| `chromeBrowserPssKb` | {'int': 2116} |
| `chromeGpuPssKb` | {'int': 2116} |
| `chromeOtherPssKb` | {'int': 2116} |
| `chromeProcesses` | {'int': 2116} |
| `chromeProfiles` | {'int': 2116} |
| `chromeRendererMaxPssKb` | {'int': 2116} |
| `chromeRendererPssKb` | {'int': 2116} |
| `chromeRenderers` | {'int': 2116} |
| `chromeTabs` | {'int': 2116} |
| `chromeTabsProbedProfiles` | {'int': 2116} |
| `chromeUtilityPssKb` | {'int': 2116} |
| `desktopPssKb` | {'int': 2116} |
| `hostPssKb` | {'int': 2116} |
| `kind` | {'str': 2116} |
| `memAvailableKb` | {'int': 2116} |
| `memTotalKb` | {'int': 2116} |
| `otherPssKb` | {'int': 2116} |
| `processes` | {'int': 2116} |
| `pssFallbackProcesses` | {'int': 2116} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
