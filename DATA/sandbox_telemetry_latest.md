# sandbox_telemetry_parse — 2026-10-06 03:11:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=117386 lines=262
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 257 |
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
| `chromeBrowserPssKb` | {'int': 257} |
| `chromeGpuPssKb` | {'int': 257} |
| `chromeOtherPssKb` | {'int': 257} |
| `chromeProcesses` | {'int': 257} |
| `chromeProfiles` | {'int': 257} |
| `chromeRendererMaxPssKb` | {'int': 257} |
| `chromeRendererPssKb` | {'int': 257} |
| `chromeRenderers` | {'int': 257} |
| `chromeTabs` | {'int': 257} |
| `chromeTabsProbedProfiles` | {'int': 257} |
| `chromeUtilityPssKb` | {'int': 257} |
| `desktopPssKb` | {'int': 257} |
| `hostPssKb` | {'int': 257} |
| `kind` | {'str': 257} |
| `memAvailableKb` | {'int': 257} |
| `memTotalKb` | {'int': 257} |
| `otherPssKb` | {'int': 257} |
| `processes` | {'int': 257} |
| `pssFallbackProcesses` | {'int': 257} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
