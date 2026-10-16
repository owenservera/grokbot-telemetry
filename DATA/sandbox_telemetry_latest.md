# sandbox_telemetry_parse — 2026-10-16 06:18:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=178547 lines=667
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 432 |
| `memory_sample` | 226 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 226} |
| `chromeGpuPssKb` | {'int': 226} |
| `chromeOtherPssKb` | {'int': 226} |
| `chromeProcesses` | {'int': 226} |
| `chromeProfiles` | {'int': 226} |
| `chromeRendererMaxPssKb` | {'int': 226} |
| `chromeRendererPssKb` | {'int': 226} |
| `chromeRenderers` | {'int': 226} |
| `chromeTabs` | {'int': 226} |
| `chromeTabsProbedProfiles` | {'int': 226} |
| `chromeUtilityPssKb` | {'int': 226} |
| `desktopPssKb` | {'int': 226} |
| `hostPssKb` | {'int': 226} |
| `kind` | {'str': 226} |
| `memAvailableKb` | {'int': 226} |
| `memTotalKb` | {'int': 226} |
| `otherPssKb` | {'int': 226} |
| `processes` | {'int': 226} |
| `pssFallbackProcesses` | {'int': 226} |

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
| `cpuMillicores` | {'int': 429} |
| `display` | {'int': 432} |
| `kind` | {'str': 432} |
| `processes` | {'int': 432} |
| `pssKb` | {'int': 432} |
| `rendererMaxPssKb` | {'int': 432} |
| `renderers` | {'int': 432} |
| `tabs` | {'int': 431} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
