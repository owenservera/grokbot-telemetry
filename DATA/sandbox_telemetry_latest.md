# sandbox_telemetry_parse — 2026-10-16 03:59:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=67155 lines=250
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 154 |
| `memory_sample` | 87 |
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
| `chromeBrowserPssKb` | {'int': 87} |
| `chromeGpuPssKb` | {'int': 87} |
| `chromeOtherPssKb` | {'int': 87} |
| `chromeProcesses` | {'int': 87} |
| `chromeProfiles` | {'int': 87} |
| `chromeRendererMaxPssKb` | {'int': 87} |
| `chromeRendererPssKb` | {'int': 87} |
| `chromeRenderers` | {'int': 87} |
| `chromeTabs` | {'int': 87} |
| `chromeTabsProbedProfiles` | {'int': 87} |
| `chromeUtilityPssKb` | {'int': 87} |
| `desktopPssKb` | {'int': 87} |
| `hostPssKb` | {'int': 87} |
| `kind` | {'str': 87} |
| `memAvailableKb` | {'int': 87} |
| `memTotalKb` | {'int': 87} |
| `otherPssKb` | {'int': 87} |
| `processes` | {'int': 87} |
| `pssFallbackProcesses` | {'int': 87} |

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
| `cpuMillicores` | {'int': 151} |
| `display` | {'int': 154} |
| `kind` | {'str': 154} |
| `processes` | {'int': 154} |
| `pssKb` | {'int': 154} |
| `rendererMaxPssKb` | {'int': 154} |
| `renderers` | {'int': 154} |
| `tabs` | {'int': 153} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
