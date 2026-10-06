# sandbox_telemetry_parse — 2026-10-06 06:13:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=199466 lines=442
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 437 |
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
| `chromeBrowserPssKb` | {'int': 437} |
| `chromeGpuPssKb` | {'int': 437} |
| `chromeOtherPssKb` | {'int': 437} |
| `chromeProcesses` | {'int': 437} |
| `chromeProfiles` | {'int': 437} |
| `chromeRendererMaxPssKb` | {'int': 437} |
| `chromeRendererPssKb` | {'int': 437} |
| `chromeRenderers` | {'int': 437} |
| `chromeTabs` | {'int': 437} |
| `chromeTabsProbedProfiles` | {'int': 437} |
| `chromeUtilityPssKb` | {'int': 437} |
| `desktopPssKb` | {'int': 437} |
| `hostPssKb` | {'int': 437} |
| `kind` | {'str': 437} |
| `memAvailableKb` | {'int': 437} |
| `memTotalKb` | {'int': 437} |
| `otherPssKb` | {'int': 437} |
| `processes` | {'int': 437} |
| `pssFallbackProcesses` | {'int': 437} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
