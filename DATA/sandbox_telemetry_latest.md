# sandbox_telemetry_parse — 2026-10-25 17:18:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=5068845 lines=12716
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 10266 |
| `chrome_profile_sample` | 2440 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 10266} |
| `chromeGpuPssKb` | {'int': 10266} |
| `chromeOtherPssKb` | {'int': 10266} |
| `chromeProcesses` | {'int': 10266} |
| `chromeProfiles` | {'int': 10266} |
| `chromeRendererMaxPssKb` | {'int': 10266} |
| `chromeRendererPssKb` | {'int': 10266} |
| `chromeRenderers` | {'int': 10266} |
| `chromeTabs` | {'int': 10266} |
| `chromeTabsProbedProfiles` | {'int': 10266} |
| `chromeUtilityPssKb` | {'int': 10266} |
| `desktopPssKb` | {'int': 10266} |
| `hostPssKb` | {'int': 10266} |
| `kind` | {'str': 10266} |
| `memAvailableKb` | {'int': 10266} |
| `memTotalKb` | {'int': 10266} |
| `otherPssKb` | {'int': 10266} |
| `processes` | {'int': 10266} |
| `pssFallbackProcesses` | {'int': 10266} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 2437} |
| `display` | {'int': 2440} |
| `kind` | {'str': 2440} |
| `processes` | {'int': 2440} |
| `pssKb` | {'int': 2440} |
| `rendererMaxPssKb` | {'int': 2440} |
| `renderers` | {'int': 2440} |
| `tabs` | {'int': 2439} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
