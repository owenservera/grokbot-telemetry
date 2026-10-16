# sandbox_telemetry_parse — 2026-10-16 07:34:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=238706 lines=892
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 582 |
| `memory_sample` | 301 |
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
| `chromeBrowserPssKb` | {'int': 301} |
| `chromeGpuPssKb` | {'int': 301} |
| `chromeOtherPssKb` | {'int': 301} |
| `chromeProcesses` | {'int': 301} |
| `chromeProfiles` | {'int': 301} |
| `chromeRendererMaxPssKb` | {'int': 301} |
| `chromeRendererPssKb` | {'int': 301} |
| `chromeRenderers` | {'int': 301} |
| `chromeTabs` | {'int': 301} |
| `chromeTabsProbedProfiles` | {'int': 301} |
| `chromeUtilityPssKb` | {'int': 301} |
| `desktopPssKb` | {'int': 301} |
| `hostPssKb` | {'int': 301} |
| `kind` | {'str': 301} |
| `memAvailableKb` | {'int': 301} |
| `memTotalKb` | {'int': 301} |
| `otherPssKb` | {'int': 301} |
| `processes` | {'int': 301} |
| `pssFallbackProcesses` | {'int': 301} |

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
| `cpuMillicores` | {'int': 579} |
| `display` | {'int': 582} |
| `kind` | {'str': 582} |
| `processes` | {'int': 582} |
| `pssKb` | {'int': 582} |
| `rendererMaxPssKb` | {'int': 582} |
| `renderers` | {'int': 582} |
| `tabs` | {'int': 581} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
