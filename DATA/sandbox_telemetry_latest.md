# sandbox_telemetry_parse — 2026-10-14 07:37:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=167158 lines=374
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 369 |
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
| `chromeBrowserPssKb` | {'int': 369} |
| `chromeGpuPssKb` | {'int': 369} |
| `chromeOtherPssKb` | {'int': 369} |
| `chromeProcesses` | {'int': 369} |
| `chromeProfiles` | {'int': 369} |
| `chromeRendererMaxPssKb` | {'int': 369} |
| `chromeRendererPssKb` | {'int': 369} |
| `chromeRenderers` | {'int': 369} |
| `chromeTabs` | {'int': 369} |
| `chromeTabsProbedProfiles` | {'int': 369} |
| `chromeUtilityPssKb` | {'int': 369} |
| `desktopPssKb` | {'int': 369} |
| `hostPssKb` | {'int': 369} |
| `kind` | {'str': 369} |
| `memAvailableKb` | {'int': 369} |
| `memTotalKb` | {'int': 369} |
| `otherPssKb` | {'int': 369} |
| `processes` | {'int': 369} |
| `pssFallbackProcesses` | {'int': 369} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
