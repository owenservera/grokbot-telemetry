# sandbox_telemetry_parse — 2026-10-16 17:21:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=665671 lines=2488
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1646 |
| `memory_sample` | 833 |
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
| `chromeBrowserPssKb` | {'int': 833} |
| `chromeGpuPssKb` | {'int': 833} |
| `chromeOtherPssKb` | {'int': 833} |
| `chromeProcesses` | {'int': 833} |
| `chromeProfiles` | {'int': 833} |
| `chromeRendererMaxPssKb` | {'int': 833} |
| `chromeRendererPssKb` | {'int': 833} |
| `chromeRenderers` | {'int': 833} |
| `chromeTabs` | {'int': 833} |
| `chromeTabsProbedProfiles` | {'int': 833} |
| `chromeUtilityPssKb` | {'int': 833} |
| `desktopPssKb` | {'int': 833} |
| `hostPssKb` | {'int': 833} |
| `kind` | {'str': 833} |
| `memAvailableKb` | {'int': 833} |
| `memTotalKb` | {'int': 833} |
| `otherPssKb` | {'int': 833} |
| `processes` | {'int': 833} |
| `pssFallbackProcesses` | {'int': 833} |

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
| `cpuMillicores` | {'int': 1643} |
| `display` | {'int': 1646} |
| `kind` | {'str': 1646} |
| `processes` | {'int': 1646} |
| `pssKb` | {'int': 1646} |
| `rendererMaxPssKb` | {'int': 1646} |
| `renderers` | {'int': 1646} |
| `tabs` | {'int': 1645} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
