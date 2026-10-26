# sandbox_telemetry_parse — 2026-10-27 00:35:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=228240 lines=508
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 503 |
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
| `chromeBrowserPssKb` | {'int': 503} |
| `chromeGpuPssKb` | {'int': 503} |
| `chromeOtherPssKb` | {'int': 503} |
| `chromeProcesses` | {'int': 503} |
| `chromeProfiles` | {'int': 503} |
| `chromeRendererMaxPssKb` | {'int': 503} |
| `chromeRendererPssKb` | {'int': 503} |
| `chromeRenderers` | {'int': 503} |
| `chromeTabs` | {'int': 503} |
| `chromeTabsProbedProfiles` | {'int': 503} |
| `chromeUtilityPssKb` | {'int': 503} |
| `desktopPssKb` | {'int': 503} |
| `hostPssKb` | {'int': 503} |
| `kind` | {'str': 503} |
| `memAvailableKb` | {'int': 503} |
| `memTotalKb` | {'int': 503} |
| `otherPssKb` | {'int': 503} |
| `processes` | {'int': 503} |
| `pssFallbackProcesses` | {'int': 503} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
